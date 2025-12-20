@global_var_320 = external constant [20 x i8]
@global_var_630ac = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_10ef1:
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_10f6b, label %dec_label_pc_10f10

dec_label_pc_10f10:                               ; preds = %dec_label_pc_10ef1
  %3 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_10f39, label %dec_label_pc_10f25

dec_label_pc_10f25:                               ; preds = %dec_label_pc_10f10
  call void @exit(i32 -1)
  unreachable

dec_label_pc_10f39:                               ; preds = %dec_label_pc_10f10, %dec_label_pc_10f39
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
  br i1 %13, label %dec_label_pc_10f5f, label %dec_label_pc_10f39

dec_label_pc_10f5f:                               ; preds = %dec_label_pc_10f39
  call void @free(ptr %3)
  br label %dec_label_pc_10f6b

dec_label_pc_10f6b:                               ; preds = %dec_label_pc_10f5f, %dec_label_pc_10ef1
  ret void
}

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

