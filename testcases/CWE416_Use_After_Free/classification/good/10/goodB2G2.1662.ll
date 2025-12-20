@global_var_630a8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_cee5:
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_630a8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_cf5d, label %dec_label_pc_cf03

dec_label_pc_cf03:                                ; preds = %dec_label_pc_cee5
  %2 = call ptr @malloc(i32 400)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_cf2c, label %dec_label_pc_cf18

dec_label_pc_cf18:                                ; preds = %dec_label_pc_cf03
  call void @exit(i32 -1)
  unreachable

dec_label_pc_cf2c:                                ; preds = %dec_label_pc_cf03, %dec_label_pc_cf2c
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
  br i1 %12, label %dec_label_pc_cf51, label %dec_label_pc_cf2c

dec_label_pc_cf51:                                ; preds = %dec_label_pc_cf2c
  call void @free(ptr %2)
  br label %dec_label_pc_cf5d

dec_label_pc_cf5d:                                ; preds = %dec_label_pc_cf51, %dec_label_pc_cee5
  ret void
}

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

