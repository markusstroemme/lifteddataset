@global_var_4a944 = external constant [4 x i8]

define i32 @staticReturnsTrue.155() local_unnamed_addr {
dec_label_pc_c791:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_c7af:
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %0 = call i32 @staticReturnsTrue.155()
  %1 = icmp eq i32 %0, 0
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_c82b, label %dec_label_pc_c7d1

dec_label_pc_c7d1:                                ; preds = %dec_label_pc_c7af
  %2 = call ptr @malloc(i32 400)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_c7fa, label %dec_label_pc_c7e6

dec_label_pc_c7e6:                                ; preds = %dec_label_pc_c7d1
  call void @exit(i32 -1)
  unreachable

dec_label_pc_c7fa:                                ; preds = %dec_label_pc_c7d1, %dec_label_pc_c7fa
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %6 = mul i64 %storemerge1.reload, 4
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 5, ptr %8, align 4
  %9 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_c81f, label %dec_label_pc_c7fa

dec_label_pc_c81f:                                ; preds = %dec_label_pc_c7fa
  call void @free(ptr %2)
  %phitmp = bitcast ptr %2 to ptr
  store ptr %phitmp, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_c82b

dec_label_pc_c82b:                                ; preds = %dec_label_pc_c81f, %dec_label_pc_c7af
  %10 = call i32 @staticReturnsTrue.155()
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %dec_label_pc_c846, label %dec_label_pc_c839

dec_label_pc_c839:                                ; preds = %dec_label_pc_c82b
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %12 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_c846

dec_label_pc_c846:                                ; preds = %dec_label_pc_c839, %dec_label_pc_c82b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

