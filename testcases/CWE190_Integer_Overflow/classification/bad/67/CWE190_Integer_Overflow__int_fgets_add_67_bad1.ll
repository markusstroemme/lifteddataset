@global_var_909f6 = external constant [16 x i8]
@global_var_9543c = external constant [4 x i8]
@global_var_c3080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_53959:
  %stack_var_-36.0.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_c3080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_539be, label %dec_label_pc_539ad

dec_label_pc_539ad:                               ; preds = %dec_label_pc_53959
  %5 = call i32 @atoi(ptr nonnull %2)
  %phitmp = zext i32 %5 to i64
  store i64 %phitmp, ptr %stack_var_-36.0.reg2mem, align 8
  br label %dec_label_pc_539cd

dec_label_pc_539be:                               ; preds = %dec_label_pc_53959
  call void @printLine(ptr @global_var_909f6)
  store i64 0, ptr %stack_var_-36.0.reg2mem, align 8
  br label %dec_label_pc_539cd

dec_label_pc_539cd:                               ; preds = %dec_label_pc_539be, %dec_label_pc_539ad
  %stack_var_-36.0.reload = load i64, ptr %stack_var_-36.0.reg2mem, align 8
  call void @anon1(i64 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_539f2, label %dec_label_pc_539ed

dec_label_pc_539ed:                               ; preds = %dec_label_pc_539cd
  call void @__stack_chk_fail()
  br label %dec_label_pc_539f2

dec_label_pc_539f2:                               ; preds = %dec_label_pc_539ed, %dec_label_pc_539cd
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_53adb:
  %0 = trunc i64 %myStruct to i32
  %1 = add i32 %0, 1
  call void @printIntLine(i32 %1)
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

