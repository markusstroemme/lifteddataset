@global_var_4a944 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_e1ff:
  %storemerge36.reg2mem = alloca i64, align 8
  %0 = call ptr @malloc(i32 400)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_e246.preheader, label %dec_label_pc_e214

dec_label_pc_e246.preheader:                      ; preds = %dec_label_pc_e1ff
  %3 = ptrtoint ptr %0 to i64
  store i64 0, ptr %storemerge36.reg2mem, align 8
  br label %dec_label_pc_e228

dec_label_pc_e214:                                ; preds = %dec_label_pc_e1ff
  call void @exit(i32 -1)
  unreachable

dec_label_pc_e228:                                ; preds = %dec_label_pc_e228, %dec_label_pc_e246.preheader
  %storemerge36.reload = load i64, ptr %storemerge36.reg2mem, align 8
  %4 = mul i64 %storemerge36.reload, 4
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i32 5, ptr %6, align 4
  %7 = add nuw nsw i64 %storemerge36.reload, 1
  %exitcond = icmp eq i64 %7, 100
  store i64 %7, ptr %storemerge36.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_e277, label %dec_label_pc_e228

dec_label_pc_e277:                                ; preds = %dec_label_pc_e228
  %8 = bitcast ptr %0 to ptr
  %9 = load i32, ptr %8, align 4
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

