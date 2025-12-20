@global_var_320 = external constant [20 x i8]
@global_var_630a8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_102db:
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_630a8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_10354, label %dec_label_pc_102f9

dec_label_pc_102f9:                               ; preds = %dec_label_pc_102db
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_10322, label %dec_label_pc_1030e

dec_label_pc_1030e:                               ; preds = %dec_label_pc_102f9
  call void @exit(i32 -1)
  unreachable

dec_label_pc_10322:                               ; preds = %dec_label_pc_102f9, %dec_label_pc_10322
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
  br i1 %12, label %dec_label_pc_10348, label %dec_label_pc_10322

dec_label_pc_10348:                               ; preds = %dec_label_pc_10322
  call void @free(ptr %2)
  br label %dec_label_pc_10354

dec_label_pc_10354:                               ; preds = %dec_label_pc_10348, %dec_label_pc_102db
  ret void
}

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

