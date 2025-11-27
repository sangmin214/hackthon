      {/* 力导向图容器 - 更加独立的画布 */}
      <div style={{ 
        border: '1px solidrgb(206, 225, 203)', 
        height: `${graphHeight}px`, 
        width: `${graphWidth}px`,
        backgroundColor: 'white',
        borderRadius: '4px',
        boxShadow: '0 1px 3px rgba(0, 0, 0, 0.1)',
        margin: '200px auto 0', // 增加上边距，防止与上方元素重叠
        padding: '100px' // 添加内边距，让图形不紧贴边缘
      }}>
        <ForceGraph2D
          graphData={graphData}
          nodeLabel={node => `${node.name} (${node.type})`}
          nodeColor={node => node.color || '#999999'}
          nodeVal={node => 8}
          linkDirectionalArrowLength={4}
          linkDirectionalArrowRelPos={1}
          linkLabel={link => link.relationType || '关联'}
          onNodeClick={handleNodeClick}
          backgroundColor="#ffffff"
        />
      </div>
