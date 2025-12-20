@global_var_4a944 = external constant [4 x i8]
@global_var_63024 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_c497:
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i32, align 4
  %storemerge1.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63024, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_c510, label %dec_label_pc_c4b6

dec_label_pc_c4b6:                                ; preds = %dec_label_pc_c497
  %3 = call ptr @malloc(i32 400)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_c4df, label %dec_label_pc_c4cb

dec_label_pc_c4cb:                                ; preds = %dec_label_pc_c4b6
  call void @exit(i32 -1)
  unreachable

dec_label_pc_c4df:                                ; preds = %dec_label_pc_c4b6, %dec_label_pc_c4df
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %7 = mul i64 %storemerge1.reload, 4
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i32 5, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_c504, label %dec_label_pc_c4df

dec_label_pc_c504:                                ; preds = %dec_label_pc_c4df
  call void @free(ptr %3)
  %phitmp = bitcast ptr %3 to ptr
  %.pre = load i32, ptr @global_var_63024, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store ptr %phitmp, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_c510

dec_label_pc_c510:                                ; preds = %dec_label_pc_c504, %dec_label_pc_c497
  %.reload = load i32, ptr %.reg2mem, align 4
  %11 = icmp eq i32 %.reload, 5
  %12 = icmp eq i1 %11, false
  br i1 %12, label %dec_label_pc_c528, label %dec_label_pc_c51b

dec_label_pc_c51b:                                ; preds = %dec_label_pc_c510
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %13 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_c528

dec_label_pc_c528:                                ; preds = %dec_label_pc_c51b, %dec_label_pc_c510
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

