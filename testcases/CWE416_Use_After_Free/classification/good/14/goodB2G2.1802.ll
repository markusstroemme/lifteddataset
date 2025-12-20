@global_var_630ac = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_dace:
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_db47, label %dec_label_pc_daed

dec_label_pc_daed:                                ; preds = %dec_label_pc_dace
  %3 = call ptr @malloc(i32 400)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_db16, label %dec_label_pc_db02

dec_label_pc_db02:                                ; preds = %dec_label_pc_daed
  call void @exit(i32 -1)
  unreachable

dec_label_pc_db16:                                ; preds = %dec_label_pc_daed, %dec_label_pc_db16
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %7 = ptrtoint ptr %storemerge1.reload to i64
  %8 = mul i64 %7, 4
  %9 = add i64 %8, %4
  %10 = inttoptr i64 %9 to ptr
  store i32 5, ptr %10, align 4
  %11 = add i64 %7, 1
  %12 = inttoptr i64 %11 to ptr
  %13 = icmp ugt ptr %12, inttoptr (i64 99 to ptr)
  store ptr %12, ptr %storemerge1.reg2mem, align 8
  br i1 %13, label %dec_label_pc_db3b, label %dec_label_pc_db16

dec_label_pc_db3b:                                ; preds = %dec_label_pc_db16
  call void @free(ptr %3)
  br label %dec_label_pc_db47

dec_label_pc_db47:                                ; preds = %dec_label_pc_db3b, %dec_label_pc_dace
  ret void
}

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

