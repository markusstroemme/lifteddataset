@global_var_320 = external constant [20 x i8]
@global_var_63034 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_130a6:
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_63034, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_13139, label %dec_label_pc_130c5

dec_label_pc_130c5:                               ; preds = %dec_label_pc_130a6
  %3 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_130ee, label %dec_label_pc_130da

dec_label_pc_130da:                               ; preds = %dec_label_pc_130c5
  call void @exit(i32 -1)
  unreachable

dec_label_pc_130ee:                               ; preds = %dec_label_pc_130c5, %dec_label_pc_130ee
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %7 = ptrtoint ptr %storemerge1.reload to i64
  %8 = mul i64 %7, 8
  %9 = add i64 %8, %4
  %10 = inttoptr i64 %9 to ptr
  store i32 1, ptr %10, align 4
  %11 = add i64 %9, 4
  %12 = inttoptr i64 %11 to ptr
  store i32 2, ptr %12, align 4
  %13 = add i64 %7, 1
  %14 = inttoptr i64 %13 to ptr
  %15 = icmp ugt ptr %14, inttoptr (i64 99 to ptr)
  store ptr %14, ptr %storemerge1.reg2mem, align 8
  br i1 %15, label %dec_label_pc_1312d, label %dec_label_pc_130ee

dec_label_pc_1312d:                               ; preds = %dec_label_pc_130ee
  call void @free(ptr %3)
  br label %dec_label_pc_13139

dec_label_pc_13139:                               ; preds = %dec_label_pc_1312d, %dec_label_pc_130a6
  ret void
}

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

