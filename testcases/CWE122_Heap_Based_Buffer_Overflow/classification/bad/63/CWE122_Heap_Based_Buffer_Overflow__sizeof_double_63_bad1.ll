@global_var_34bf2 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_6ea4:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 8)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_6ee8, label %dec_label_pc_6ede

dec_label_pc_6ede:                                ; preds = %dec_label_pc_6ea4
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6ee8:                                ; preds = %dec_label_pc_6ea4
  %5 = call i128 @__asm_movsd(i64 9098483789791991595)
  %6 = call i64 @__asm_movsd.211(i128 %5)
  store i64 %6, ptr %1, align 8
  %7 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %7)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_6f19, label %dec_label_pc_6f14

dec_label_pc_6f14:                                ; preds = %dec_label_pc_6ee8
  call void @__stack_chk_fail()
  br label %dec_label_pc_6f19

dec_label_pc_6f19:                                ; preds = %dec_label_pc_6f14, %dec_label_pc_6ee8
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_6fa7:
  %0 = ptrtoint ptr %dataPtr to i64
  %1 = call i128 @__asm_movq(i64 %0)
  %2 = trunc i128 %1 to i64
  %3 = bitcast i64 %2 to double
  call void @printDoubleLine(double %3)
  %4 = bitcast ptr %dataPtr to ptr
  call void @free(ptr %4)
  ret void
}

define void @printDoubleLine(double %doubleNumber) local_unnamed_addr {
dec_label_pc_2bad7:
  %0 = fptrunc double %doubleNumber to float
  %1 = bitcast float %0 to i32
  %2 = sext i32 %1 to i128
  %3 = call i64 @__asm_movsd.211(i128 %2)
  %4 = call i128 @__asm_movq(i64 %3)
  %5 = trunc i128 %4 to i64
  %6 = bitcast i64 %5 to double
  %7 = call i32 (ptr, ...) @printf(ptr @global_var_34bf2, double %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i128 @__asm_movsd(i64) local_unnamed_addr

declare i64 @__asm_movsd.211(i128) local_unnamed_addr

declare i128 @__asm_movq(i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

