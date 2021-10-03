function b = inhibitioncreate(type,varargin )
% wcreate('line','l', 5, 3)
    b=1;
    switch type
        case 'line'
            switch varargin{1}
                case 'r',b=[ones(varargin{3},varargin{2}-1) zeros(varargin{3},varargin{2}) ];
                case 'l',b=[ zeros(varargin{3},varargin{2}) ones(varargin{3},varargin{2}-1)];
                case 'd',b=[ones(varargin{3},varargin{2}-1) zeros(varargin{3},varargin{2}) ]';
                case 'u',b=[ zeros(varargin{3},varargin{2}) ones(varargin{3},varargin{2}-1)]';
            end
    end
    if b==1,fprintf('error\n'),end
end