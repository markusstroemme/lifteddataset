define void @anon0() local_unnamed_addr {
dec_label_pc_d1e6:
  %storemerge1.reg2mem = alloca ptr, align 8
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_d262, label %dec_label_pc_d208

dec_label_pc_d208:                                ; preds = %dec_label_pc_d1e6
  %2 = call ptr @malloc(i32 400)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_d231, label %dec_label_pc_d21d

dec_label_pc_d21d:                                ; preds = %dec_label_pc_d208
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d231:                                ; preds = %dec_label_pc_d208, %dec_label_pc_d231
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
  br i1 %12, label %dec_label_pc_d256, label %dec_label_pc_d231

dec_label_pc_d256:                                ; preds = %dec_label_pc_d231
  call void @free(ptr %2)
  br label %dec_label_pc_d262

dec_label_pc_d262:                                ; preds = %dec_label_pc_d256, %dec_label_pc_d1e6
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

