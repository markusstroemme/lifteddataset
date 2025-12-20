@global_var_320 = external constant [20 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_14c88:
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %3, label %dec_label_pc_14cc5, label %dec_label_pc_14cb1

dec_label_pc_14cb1:                               ; preds = %dec_label_pc_14c88
  call void @exit(i32 -1)
  unreachable

dec_label_pc_14cc5:                               ; preds = %dec_label_pc_14c88, %dec_label_pc_14cc5
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %4 = ptrtoint ptr %storemerge1.reload to i64
  %5 = mul i64 %4, 8
  %6 = add i64 %5, %1
  %7 = inttoptr i64 %6 to ptr
  store i32 1, ptr %7, align 4
  %8 = add i64 %6, 4
  %9 = inttoptr i64 %8 to ptr
  store i32 2, ptr %9, align 4
  %10 = add i64 %4, 1
  %11 = inttoptr i64 %10 to ptr
  %12 = icmp ugt ptr %11, inttoptr (i64 99 to ptr)
  store ptr %11, ptr %storemerge1.reg2mem, align 8
  br i1 %12, label %dec_label_pc_14d04, label %dec_label_pc_14cc5

dec_label_pc_14d04:                               ; preds = %dec_label_pc_14cc5
  call void @free(ptr %0)
  ret void
}

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

