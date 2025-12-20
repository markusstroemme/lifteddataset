@global_var_4a944 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_e38d:
  %storemerge2.reg2mem = alloca ptr, align 8
  %0 = call ptr @malloc(i32 400)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_e3e9.preheader, label %dec_label_pc_e3b7

dec_label_pc_e3e9.preheader:                      ; preds = %dec_label_pc_e38d
  %3 = bitcast ptr %0 to ptr
  %4 = ptrtoint ptr %0 to i64
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_e3cb

dec_label_pc_e3b7:                                ; preds = %dec_label_pc_e38d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_e3cb:                                ; preds = %dec_label_pc_e3e9.preheader, %dec_label_pc_e3cb
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %5 = ptrtoint ptr %storemerge2.reload to i64
  %6 = mul i64 %5, 4
  %7 = add i64 %6, %4
  %8 = inttoptr i64 %7 to ptr
  store i32 5, ptr %8, align 4
  %9 = add i64 %5, 1
  %10 = inttoptr i64 %9 to ptr
  %11 = icmp ugt ptr %10, inttoptr (i64 99 to ptr)
  store ptr %10, ptr %storemerge2.reg2mem, align 8
  br i1 %11, label %dec_label_pc_e3f0, label %dec_label_pc_e3cb

dec_label_pc_e3f0:                                ; preds = %dec_label_pc_e3cb
  %12 = load i32, ptr %3, align 4
  call void @printIntLine(i32 %12)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

