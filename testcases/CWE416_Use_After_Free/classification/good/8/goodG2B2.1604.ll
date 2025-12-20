@global_var_4a944 = external constant [4 x i8]

define i32 @staticReturnsTrue.155() local_unnamed_addr {
dec_label_pc_c791:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_ca0d:
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = call i32 @staticReturnsTrue.155()
  %1 = icmp eq i32 %0, 0
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_ca7d, label %dec_label_pc_ca2f

dec_label_pc_ca2f:                                ; preds = %dec_label_pc_ca0d
  %2 = call ptr @malloc(i32 400)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_ca76.preheader, label %dec_label_pc_ca44

dec_label_pc_ca76.preheader:                      ; preds = %dec_label_pc_ca2f
  %5 = bitcast ptr %2 to ptr
  %6 = ptrtoint ptr %2 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_ca58

dec_label_pc_ca44:                                ; preds = %dec_label_pc_ca2f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_ca58:                                ; preds = %dec_label_pc_ca58, %dec_label_pc_ca76.preheader
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %7 = mul i64 %storemerge2.reload, 4
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 5, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge2.reg2mem, align 8
  store ptr %5, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_ca7d, label %dec_label_pc_ca58

dec_label_pc_ca7d:                                ; preds = %dec_label_pc_ca58, %dec_label_pc_ca0d
  %11 = call i32 @staticReturnsTrue.155()
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %dec_label_pc_ca98, label %dec_label_pc_ca8b

dec_label_pc_ca8b:                                ; preds = %dec_label_pc_ca7d
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %13 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_ca98

dec_label_pc_ca98:                                ; preds = %dec_label_pc_ca8b, %dec_label_pc_ca7d
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

