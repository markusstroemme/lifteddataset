@global_var_49c2a = external constant [21 x i8]

define i32 @staticReturnsTrue.155() local_unnamed_addr {
dec_label_pc_c791:
  ret i32 1
}

define i32 @staticReturnsFalse.156() local_unnamed_addr {
dec_label_pc_c7a0:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_c849:
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = call i32 @staticReturnsTrue.155()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_c8c5, label %dec_label_pc_c86b

dec_label_pc_c86b:                                ; preds = %dec_label_pc_c849
  %2 = call ptr @malloc(i32 400)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_c894, label %dec_label_pc_c880

dec_label_pc_c880:                                ; preds = %dec_label_pc_c86b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_c894:                                ; preds = %dec_label_pc_c86b, %dec_label_pc_c894
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %6 = ptrtoint ptr %storemerge1.reload to i64
  %7 = mul i64 %6, 4
  %8 = add i64 %7, %3
  %9 = inttoptr i64 %8 to ptr
  store i32 5, ptr %9, align 4
  %10 = add i64 %6, 1
  %11 = inttoptr i64 %10 to ptr
  %12 = icmp ugt ptr %11, inttoptr (i64 99 to ptr)
  store ptr %11, ptr %storemerge1.reg2mem, align 8
  br i1 %12, label %dec_label_pc_c8b9, label %dec_label_pc_c894

dec_label_pc_c8b9:                                ; preds = %dec_label_pc_c894
  call void @free(ptr %2)
  br label %dec_label_pc_c8c5

dec_label_pc_c8c5:                                ; preds = %dec_label_pc_c8b9, %dec_label_pc_c849
  %13 = call i32 @staticReturnsFalse.156()
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_c8e2, label %dec_label_pc_c8d3

dec_label_pc_c8d3:                                ; preds = %dec_label_pc_c8c5
  call void @printLine(ptr @global_var_49c2a)
  br label %dec_label_pc_c8e2

dec_label_pc_c8e2:                                ; preds = %dec_label_pc_c8d3, %dec_label_pc_c8c5
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3b807:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3b82a, label %dec_label_pc_3b81e

dec_label_pc_3b81e:                               ; preds = %dec_label_pc_3b807
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3b82a

dec_label_pc_3b82a:                               ; preds = %dec_label_pc_3b81e, %dec_label_pc_3b807
  ret void
}

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

