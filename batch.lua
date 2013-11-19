
------------------------------------------------------------------------
--[[ Batch ]]--
-- A batch of examples sampled from a dataset.
------------------------------------------------------------------------

local Batch = torch.class("dp.Batch")

function Batch:__init(...)
   local args, inputs, targets
      = xlua.unpack(
      'Batch', nil,
      {arg='inputs', type='torch.Tensor', req=true,
       help='batch of inputs'},
      {arg='targets', type='torch.Tensor',
       help='batch of targets'}
   )
   self:setInputs(inputs)
   self:setTargets(targets)
end

function Batch:setInputs(inputs)
   self._inputs = inputs
end

function Batch:inputs()
   return self._inputs
end

function Batch:setTargets(targets)
   self._targets = targets
end

function Batch:targets()
   return self._targets
end
