package Inter;


import Bean.medicalregbean;
import Bean.publiccomp;
import Bean.selterregbean;
import Bean.volunterregbean;



public interface Inter {

	public int disastercomplaint(publiccomp tb);
	
	public int voluntreg(volunterregbean vr);

	public boolean volunterlog1(volunterregbean up);
	
	public int governseltreg(selterregbean sr);
	
	public boolean governseltlog1(selterregbean sl);
	
    public int medicalreg(medicalregbean mr);
	
	public boolean medicallog1(medicalregbean ml);
}
