@global_var_320 = external constant [20 x i8]
@global_var_4a96e = external constant [10 x i8]
@global_var_63034 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_12f49:
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %.reg2mem = alloca i32, align 4
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63034, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_12fdc, label %dec_label_pc_12f68

dec_label_pc_12f68:                               ; preds = %dec_label_pc_12f49
  %3 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_12fc9.preheader, label %dec_label_pc_12f7d

dec_label_pc_12fc9.preheader:                     ; preds = %dec_label_pc_12f68
  %6 = bitcast ptr %3 to ptr
  %7 = ptrtoint ptr %3 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_12f91

dec_label_pc_12f7d:                               ; preds = %dec_label_pc_12f68
  call void @exit(i32 -1)
  unreachable

dec_label_pc_12f91:                               ; preds = %dec_label_pc_12f91, %dec_label_pc_12fc9.preheader
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %8 = mul i64 %storemerge2.reload, 8
  %9 = add i64 %8, %7
  %10 = inttoptr i64 %9 to ptr
  store i32 1, ptr %10, align 4
  %11 = add i64 %9, 4
  %12 = inttoptr i64 %11 to ptr
  store i32 2, ptr %12, align 4
  %13 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_12fd0, label %dec_label_pc_12f91

dec_label_pc_12fd0:                               ; preds = %dec_label_pc_12f91
  call void @free(ptr %3)
  %.pre = load i32, ptr @global_var_63034, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store ptr %6, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_12fdc

dec_label_pc_12fdc:                               ; preds = %dec_label_pc_12fd0, %dec_label_pc_12f49
  %.reload = load i32, ptr %.reg2mem, align 4
  %14 = icmp eq i32 %.reload, 5
  %15 = icmp eq i1 %14, false
  br i1 %15, label %dec_label_pc_12ff3, label %dec_label_pc_12fe7

dec_label_pc_12fe7:                               ; preds = %dec_label_pc_12fdc
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  call void @printStructLine(ptr %stack_var_-24.0.reload)
  br label %dec_label_pc_12ff3

dec_label_pc_12ff3:                               ; preds = %dec_label_pc_12fe7, %dec_label_pc_12fdc
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_3ba96:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_4a96e, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

