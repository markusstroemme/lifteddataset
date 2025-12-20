@global_var_320 = external constant [20 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_14219:
  %storemerge12.reg2mem = alloca ptr, align 8
  %storemerge3.reg2mem = alloca ptr, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  br i1 %1, label %dec_label_pc_142b1, label %dec_label_pc_1423b

dec_label_pc_1423b:                               ; preds = %dec_label_pc_14219
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br i1 %5, label %dec_label_pc_14264, label %dec_label_pc_14250

dec_label_pc_14250:                               ; preds = %dec_label_pc_1423b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_14264:                               ; preds = %dec_label_pc_1423b, %dec_label_pc_14264
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %6 = ptrtoint ptr %storemerge3.reload to i64
  %7 = mul i64 %6, 8
  %8 = add i64 %7, %3
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  %10 = add i64 %8, 4
  %11 = inttoptr i64 %10 to ptr
  store i32 2, ptr %11, align 4
  %12 = add i64 %6, 1
  %13 = inttoptr i64 %12 to ptr
  %14 = icmp ugt ptr %13, inttoptr (i64 99 to ptr)
  store ptr %13, ptr %storemerge3.reg2mem, align 8
  br i1 %14, label %dec_label_pc_142a3, label %dec_label_pc_14264

dec_label_pc_142a3:                               ; preds = %dec_label_pc_14264
  call void @free(ptr %2)
  br label %dec_label_pc_14325

dec_label_pc_142b1:                               ; preds = %dec_label_pc_14219
  store ptr null, ptr %storemerge12.reg2mem, align 8
  br i1 %5, label %dec_label_pc_142da, label %dec_label_pc_142c6

dec_label_pc_142c6:                               ; preds = %dec_label_pc_142b1
  call void @exit(i32 -1)
  unreachable

dec_label_pc_142da:                               ; preds = %dec_label_pc_142b1, %dec_label_pc_142da
  %storemerge12.reload = load ptr, ptr %storemerge12.reg2mem, align 8
  %15 = ptrtoint ptr %storemerge12.reload to i64
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %3
  %18 = inttoptr i64 %17 to ptr
  store i32 1, ptr %18, align 4
  %19 = add i64 %17, 4
  %20 = inttoptr i64 %19 to ptr
  store i32 2, ptr %20, align 4
  %21 = add i64 %15, 1
  %22 = inttoptr i64 %21 to ptr
  %23 = icmp ugt ptr %22, inttoptr (i64 99 to ptr)
  store ptr %22, ptr %storemerge12.reg2mem, align 8
  br i1 %23, label %dec_label_pc_14319, label %dec_label_pc_142da

dec_label_pc_14319:                               ; preds = %dec_label_pc_142da
  call void @free(ptr %2)
  br label %dec_label_pc_14325

dec_label_pc_14325:                               ; preds = %dec_label_pc_14319, %dec_label_pc_142a3
  %24 = call i32 @globalReturnsTrueOrFalse()
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

