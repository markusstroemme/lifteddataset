@global_var_320 = external constant [20 x i8]
@global_var_630ac = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_a706:
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_a780, label %dec_label_pc_a725

dec_label_pc_a725:                                ; preds = %dec_label_pc_a706
  %3 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_a74e, label %dec_label_pc_a73a

dec_label_pc_a73a:                                ; preds = %dec_label_pc_a725
  call void @exit(i32 -1)
  unreachable

dec_label_pc_a74e:                                ; preds = %dec_label_pc_a725, %dec_label_pc_a74e
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %7 = ptrtoint ptr %storemerge1.reload to i64
  %8 = mul i64 %7, 8
  %9 = add i64 %8, %4
  %10 = inttoptr i64 %9 to ptr
  store i64 5, ptr %10, align 8
  %11 = add i64 %7, 1
  %12 = inttoptr i64 %11 to ptr
  %13 = icmp ugt ptr %12, inttoptr (i64 99 to ptr)
  store ptr %12, ptr %storemerge1.reg2mem, align 8
  br i1 %13, label %dec_label_pc_a774, label %dec_label_pc_a74e

dec_label_pc_a774:                                ; preds = %dec_label_pc_a74e
  call void @free(ptr %3)
  br label %dec_label_pc_a780

dec_label_pc_a780:                                ; preds = %dec_label_pc_a774, %dec_label_pc_a706
  ret void
}

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

