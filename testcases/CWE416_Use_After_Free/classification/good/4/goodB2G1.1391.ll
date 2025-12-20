define void @anon0() local_unnamed_addr {
dec_label_pc_bc5d:
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = call ptr @malloc(i32 400)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %3, label %dec_label_pc_bca3, label %dec_label_pc_bc8f

dec_label_pc_bc8f:                                ; preds = %dec_label_pc_bc5d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_bca3:                                ; preds = %dec_label_pc_bc5d, %dec_label_pc_bca3
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %4 = ptrtoint ptr %storemerge1.reload to i64
  %5 = mul i64 %4, 4
  %6 = add i64 %5, %1
  %7 = inttoptr i64 %6 to ptr
  store i32 5, ptr %7, align 4
  %8 = add i64 %4, 1
  %9 = inttoptr i64 %8 to ptr
  %10 = icmp ugt ptr %9, inttoptr (i64 99 to ptr)
  store ptr %9, ptr %storemerge1.reg2mem, align 8
  br i1 %10, label %dec_label_pc_bcc8, label %dec_label_pc_bca3

dec_label_pc_bcc8:                                ; preds = %dec_label_pc_bca3
  call void @free(ptr %0)
  ret void
}

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

