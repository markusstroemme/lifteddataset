@global_var_320 = external constant [20 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_9dfc:
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_9e79, label %dec_label_pc_9e1e

dec_label_pc_9e1e:                                ; preds = %dec_label_pc_9dfc
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_9e47, label %dec_label_pc_9e33

dec_label_pc_9e33:                                ; preds = %dec_label_pc_9e1e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_9e47:                                ; preds = %dec_label_pc_9e1e, %dec_label_pc_9e47
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %6 = ptrtoint ptr %storemerge1.reload to i64
  %7 = mul i64 %6, 8
  %8 = add i64 %7, %3
  %9 = inttoptr i64 %8 to ptr
  store i64 5, ptr %9, align 8
  %10 = add i64 %6, 1
  %11 = inttoptr i64 %10 to ptr
  %12 = icmp ugt ptr %11, inttoptr (i64 99 to ptr)
  store ptr %11, ptr %storemerge1.reg2mem, align 8
  br i1 %12, label %dec_label_pc_9e6d, label %dec_label_pc_9e47

dec_label_pc_9e6d:                                ; preds = %dec_label_pc_9e47
  call void @free(ptr %2)
  br label %dec_label_pc_9e79

dec_label_pc_9e79:                                ; preds = %dec_label_pc_9e6d, %dec_label_pc_9dfc
  %13 = call i32 @globalReturnsTrue()
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3bd17:
  ret i32 1
}

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

