---
name: safe_migration
description: Standard operating procedure for safely migrating or refactoring critical files.
---

# Safe Migration Protocol

Use this skill whenever you are about to perform a "major refactor", "migration", or "potentially destructive change" to a critical file (like a Core Component, Context, or large Page).

## Rules

1.  **Immediate Local Backup**:
    Before editing the `TargetFile`, ALWAYS create a copy in the same directory using the suffix `.backup` (or `.v1.backup` if multiple).
    *   Example: `TaskDetailModal.tsx` -> `TaskDetailModal.backup.tsx`
    *   Rationale: Git is great, but having a file side-by-side allows for immediate comparison and "emergency restore" without git commands, which is safer for the agent workflow.

2.  **Incremental Verification**:
    Do not delete the old logic immediately. If possible, create the new version as `TargetFileV2`, test it, and only then rename/swap.

3.  **Rollback Plan**:
    If the new code fails to compile or run, the immediate action is to restore the contents of `TargetFile` from `TargetFile.backup`.

## Workflow Example

1.  **Identify Target**: `src/components/ComplexComponent.tsx`
2.  **Backup**: `cp src/components/ComplexComponent.tsx src/components/ComplexComponent.backup.tsx`
3.  **Refactor**: Modify `ComplexComponent.tsx` OR create `ComplexComponentV2.tsx`.
4.  **Verify**: Check compilation.
5.  **Finalize**: If V2 was created and works, replace V1. Keep backup for 1 turn.
