package ${packageName};

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.callbacks.XC_LoadPackage.LoadPackageParam;

public class ${xposedModClass} implements IXposedHookLoadPackage {

	@Override
	public void handleLoadPackage(final LoadPackageParam lpparam)
			throws Throwable {
		XposedBridge.log("Loaded app: " + lpparam.packageName);
	}

}