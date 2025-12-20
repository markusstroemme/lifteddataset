@global_var_4a944 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_e0c2:
  %storemerge25.reg2mem = alloca i64, align 8
  %0 = call ptr @malloc(i32 400)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %storemerge25.reg2mem, align 8
  br i1 %3, label %dec_label_pc_e0eb, label %dec_label_pc_e0d7

dec_label_pc_e0d7:                                ; preds = %dec_label_pc_e0c2
  call void @exit(i32 -1)
  unreachable

dec_label_pc_e0eb:                                ; preds = %dec_label_pc_e0c2, %dec_label_pc_e0eb
  %storemerge25.reload = load i64, ptr %storemerge25.reg2mem, align 8
  %4 = mul i64 %storemerge25.reload, 4
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to ptr
  store i32 5, ptr %6, align 4
  %7 = add nuw nsw i64 %storemerge25.reload, 1
  %exitcond = icmp eq i64 %7, 100
  store i64 %7, ptr %storemerge25.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_e146, label %dec_label_pc_e0eb

dec_label_pc_e146:                                ; preds = %dec_label_pc_e0eb
  call void @free(ptr %0)
  %phitmp.le = bitcast ptr %0 to ptr
  %8 = load i32, ptr %phitmp.le, align 4
  call void @printIntLine(i32 %8)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

