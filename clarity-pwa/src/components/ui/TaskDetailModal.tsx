import React from 'react';

/**
 * @deprecated This component has been replaced by TaskDetailModalV2.
 * Please use TaskDetailModalV2 for all task editing needs.
 */
export const TaskDetailModal: React.FC<any> = (props) => {
    console.warn('TaskDetailModal (Legacy) was rendered. Please migrate to TaskDetailModalV2.', props);
    return (
        <div className="fixed inset-0 bg-black/80 z-[999] flex items-center justify-center p-8 text-white text-center">
            <div>
                <h1 className="text-2xl font-bold text-red-500 mb-4">COMPONENT DEPRECATED</h1>
                <p>Use TaskDetailModalV2 instead.</p>
                <button onClick={props.onClose} className="mt-4 bg-white text-black px-4 py-2 rounded">Close</button>
            </div>
        </div>
    );
};
