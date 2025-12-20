@global_var_4a944 = external constant [4 x i8]
@global_var_630ac = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_d9a4:
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i32, align 4
  %storemerge1.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_da1d, label %dec_label_pc_d9c3

dec_label_pc_d9c3:                                ; preds = %dec_label_pc_d9a4
  %3 = call ptr @malloc(i32 400)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_d9ec, label %dec_label_pc_d9d8

dec_label_pc_d9d8:                                ; preds = %dec_label_pc_d9c3
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d9ec:                                ; preds = %dec_label_pc_d9c3, %dec_label_pc_d9ec
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %7 = mul i64 %storemerge1.reload, 4
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i32 5, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_da11, label %dec_label_pc_d9ec

dec_label_pc_da11:                                ; preds = %dec_label_pc_d9ec
  call void @free(ptr %3)
  %phitmp = bitcast ptr %3 to ptr
  %.pre = load i32, ptr @global_var_630ac, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store ptr %phitmp, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_da1d

dec_label_pc_da1d:                                ; preds = %dec_label_pc_da11, %dec_label_pc_d9a4
  %.reload = load i32, ptr %.reg2mem, align 4
  %11 = icmp eq i32 %.reload, 5
  %12 = icmp eq i1 %11, false
  br i1 %12, label %dec_label_pc_da35, label %dec_label_pc_da28

dec_label_pc_da28:                                ; preds = %dec_label_pc_da1d
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %13 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_da35

dec_label_pc_da35:                                ; preds = %dec_label_pc_da28, %dec_label_pc_da1d
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

