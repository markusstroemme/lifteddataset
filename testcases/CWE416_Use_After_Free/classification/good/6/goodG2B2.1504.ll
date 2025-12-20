@global_var_4a944 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_c3de:
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = call ptr @malloc(i32 400)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_c443.preheader, label %dec_label_pc_c411

dec_label_pc_c443.preheader:                      ; preds = %dec_label_pc_c3de
  %3 = bitcast ptr %0 to ptr
  %4 = ptrtoint ptr %0 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_c425

dec_label_pc_c411:                                ; preds = %dec_label_pc_c3de
  call void @exit(i32 -1)
  unreachable

dec_label_pc_c425:                                ; preds = %dec_label_pc_c425, %dec_label_pc_c443.preheader
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %5 = mul i64 %storemerge2.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 5, ptr %7, align 4
  %8 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_c454, label %dec_label_pc_c425

dec_label_pc_c454:                                ; preds = %dec_label_pc_c425
  %9 = load i32, ptr %3, align 4
  call void @printIntLine(i32 %9)
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

