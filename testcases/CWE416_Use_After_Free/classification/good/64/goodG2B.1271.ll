@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_b382:
  %.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-32, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_b3d0.preheader, label %dec_label_pc_b3bc

dec_label_pc_b3d0.preheader:                      ; preds = %dec_label_pc_b382
  store i64 5, ptr %1, align 8
  store i64 1, ptr %.reg2mem, align 8
  br label %dec_label_pc_b3d0.dec_label_pc_b3d0_crit_edge

dec_label_pc_b3bc:                                ; preds = %dec_label_pc_b382
  call void @exit(i32 -1)
  unreachable

dec_label_pc_b3d0.dec_label_pc_b3d0_crit_edge:    ; preds = %dec_label_pc_b3d0.preheader, %dec_label_pc_b3d0.dec_label_pc_b3d0_crit_edge
  %.reload = load i64, ptr %.reg2mem, align 8
  %.pre = load i64, ptr %stack_var_-32, align 8
  %5 = mul i64 %.reload, 8
  %6 = add i64 %5, %.pre
  %7 = inttoptr i64 %6 to ptr
  store i64 5, ptr %7, align 8
  %8 = add nuw nsw i64 %.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_b3f2, label %dec_label_pc_b3d0.dec_label_pc_b3d0_crit_edge

dec_label_pc_b3f2:                                ; preds = %dec_label_pc_b3d0.dec_label_pc_b3d0_crit_edge
  %9 = bitcast ptr %stack_var_-32 to ptr
  call void @anon0(ptr nonnull %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_b413, label %dec_label_pc_b40e

dec_label_pc_b40e:                                ; preds = %dec_label_pc_b3f2
  call void @__stack_chk_fail()
  br label %dec_label_pc_b413

dec_label_pc_b413:                                ; preds = %dec_label_pc_b40e, %dec_label_pc_b3f2
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_b508:
  %0 = ptrtoint ptr %dataVoidPtr to i64
  call void @printLongLongLine(i64 %0)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3b925:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

