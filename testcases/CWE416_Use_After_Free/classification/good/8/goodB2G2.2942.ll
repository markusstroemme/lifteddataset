@global_var_320 = external constant [20 x i8]

define i32 @staticReturnsTrue.291() local_unnamed_addr {
dec_label_pc_132c2:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_13449:
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = call i32 @staticReturnsTrue.291()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_134df, label %dec_label_pc_1346b

dec_label_pc_1346b:                               ; preds = %dec_label_pc_13449
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_13494, label %dec_label_pc_13480

dec_label_pc_13480:                               ; preds = %dec_label_pc_1346b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_13494:                               ; preds = %dec_label_pc_1346b, %dec_label_pc_13494
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %6 = ptrtoint ptr %storemerge1.reload to i64
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
  store ptr %13, ptr %storemerge1.reg2mem, align 8
  br i1 %14, label %dec_label_pc_134d3, label %dec_label_pc_13494

dec_label_pc_134d3:                               ; preds = %dec_label_pc_13494
  call void @free(ptr %2)
  br label %dec_label_pc_134df

dec_label_pc_134df:                               ; preds = %dec_label_pc_134d3, %dec_label_pc_13449
  %15 = call i32 @staticReturnsTrue.291()
  ret void
}

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

