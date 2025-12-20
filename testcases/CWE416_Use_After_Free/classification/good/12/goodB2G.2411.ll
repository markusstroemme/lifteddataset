@global_var_320 = external constant [20 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_108c5:
  %storemerge12.reg2mem = alloca ptr, align 8
  %storemerge3.reg2mem = alloca ptr, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  br i1 %1, label %dec_label_pc_10944, label %dec_label_pc_108e7

dec_label_pc_108e7:                               ; preds = %dec_label_pc_108c5
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br i1 %5, label %dec_label_pc_10910, label %dec_label_pc_108fc

dec_label_pc_108fc:                               ; preds = %dec_label_pc_108e7
  call void @exit(i32 -1)
  unreachable

dec_label_pc_10910:                               ; preds = %dec_label_pc_108e7, %dec_label_pc_10910
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %6 = ptrtoint ptr %storemerge3.reload to i64
  %7 = mul i64 %6, 8
  %8 = add i64 %7, %3
  %9 = inttoptr i64 %8 to ptr
  store i64 5, ptr %9, align 8
  %10 = add i64 %6, 1
  %11 = inttoptr i64 %10 to ptr
  %12 = icmp ugt ptr %11, inttoptr (i64 99 to ptr)
  store ptr %11, ptr %storemerge3.reg2mem, align 8
  br i1 %12, label %dec_label_pc_10936, label %dec_label_pc_10910

dec_label_pc_10936:                               ; preds = %dec_label_pc_10910
  call void @free(ptr %2)
  br label %dec_label_pc_1099f

dec_label_pc_10944:                               ; preds = %dec_label_pc_108c5
  store ptr null, ptr %storemerge12.reg2mem, align 8
  br i1 %5, label %dec_label_pc_1096d, label %dec_label_pc_10959

dec_label_pc_10959:                               ; preds = %dec_label_pc_10944
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1096d:                               ; preds = %dec_label_pc_10944, %dec_label_pc_1096d
  %storemerge12.reload = load ptr, ptr %storemerge12.reg2mem, align 8
  %13 = ptrtoint ptr %storemerge12.reload to i64
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %3
  %16 = inttoptr i64 %15 to ptr
  store i64 5, ptr %16, align 8
  %17 = add i64 %13, 1
  %18 = inttoptr i64 %17 to ptr
  %19 = icmp ugt ptr %18, inttoptr (i64 99 to ptr)
  store ptr %18, ptr %storemerge12.reg2mem, align 8
  br i1 %19, label %dec_label_pc_10993, label %dec_label_pc_1096d

dec_label_pc_10993:                               ; preds = %dec_label_pc_1096d
  call void @free(ptr %2)
  br label %dec_label_pc_1099f

dec_label_pc_1099f:                               ; preds = %dec_label_pc_10993, %dec_label_pc_10936
  %20 = call i32 @globalReturnsTrueOrFalse()
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3bd35:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

