namespace QuantumRNG {
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Measurement;
    

    @EntryPoint()
    operation GenerateRandomBit() : Result {
        //Allocate a qubit.
        using (q = Qubit()) {
            //put the qubit in superposition.
            H(q);
            // It now has 50% chance of being measured 0 or 1
            //Measure the qubit value.
            return MResetZ(q);
        }
        
    }
}
