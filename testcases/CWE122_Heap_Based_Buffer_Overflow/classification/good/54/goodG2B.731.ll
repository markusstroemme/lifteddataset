@global_var_34bf2 = external constant [4 x i8]

define void @anon4() local_unnamed_addr {
dec_label_pc_6bfc:
  %0 = call ptr @malloc(i32 8)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_6c2f, label %dec_label_pc_6c25

dec_label_pc_6c25:                                ; preds = %dec_label_pc_6bfc
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6c2f:                                ; preds = %dec_label_pc_6bfc
  %3 = bitcast ptr %0 to ptr
  %4 = call i128 @__asm_movsd(i64 9098483789791991595)
  %5 = call i64 @__asm_movsd.211(i128 %4)
  store i64 %5, ptr %0, align 8
  call void @anon0(ptr %3)
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_6c82:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_6cc0:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_6cfe:
  call void @anon3(ptr %data)
  ret void
}

define void @anon3(ptr %data) local_unnamed_addr {
dec_label_pc_6d4d:
  %0 = ptrtoint ptr %data to i64
  %1 = call i128 @__asm_movq(i64 %0)
  %2 = trunc i128 %1 to i64
  %3 = bitcast i64 %2 to double
  call void @printDoubleLine(double %3)
  %4 = bitcast ptr %data to ptr
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

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i128 @__asm_movsd(i64) local_unnamed_addr

declare i64 @__asm_movsd.211(i128) local_unnamed_addr

declare i128 @__asm_movq(i64) local_unnamed_addr

