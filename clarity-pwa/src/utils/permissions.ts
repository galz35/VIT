
import type { PermissionRule, ActionType, ResourceType } from '../types/permissions';

export function hasPermission(
    rules: PermissionRule[] | string | undefined,
    resource: ResourceType,
    action: ActionType = 'view'
): boolean {
    if (!rules) return false;

    let parsedRules: PermissionRule[];
    if (typeof rules === 'string') {
        try {
            parsedRules = JSON.parse(rules);
        } catch {
            return false;
        }
    } else {
        parsedRules = rules;
    }

    // Check for "all" or explicit match
    return parsedRules.some(rule => {
        if (rule.resource === resource || rule.resource === 'all') {
            return rule.actions.includes(action) || (rule.actions as unknown as string[]).includes('all');
        }
        return false;
    });
}
