@global_var_4a944 = external constant [4 x i8]
@global_var_63020 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_beb5:
  %storemerge1.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63020, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_bf44, label %dec_label_pc_bed3

dec_label_pc_bed3:                                ; preds = %dec_label_pc_beb5
  %2 = call ptr @malloc(i32 400)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_befc, label %dec_label_pc_bee8

dec_label_pc_bee8:                                ; preds = %dec_label_pc_bed3
  call void @exit(i32 -1)
  unreachable

dec_label_pc_befc:                                ; preds = %dec_label_pc_bed3, %dec_label_pc_befc
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %6 = mul i64 %storemerge1.reload, 4
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 5, ptr %8, align 4
  %9 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_bf2d, label %dec_label_pc_befc

dec_label_pc_bf2d:                                ; preds = %dec_label_pc_befc
  call void @free(ptr %2)
  %.pr = load i32, ptr @global_var_63020, align 4
  %10 = icmp eq i32 %.pr, 0
  br i1 %10, label %dec_label_pc_bf44, label %dec_label_pc_bf37

dec_label_pc_bf37:                                ; preds = %dec_label_pc_bf2d
  %phitmp = bitcast ptr %2 to ptr
  %11 = load i32, ptr %phitmp, align 4
  call void @printIntLine(i32 %11)
  br label %dec_label_pc_bf44

dec_label_pc_bf44:                                ; preds = %dec_label_pc_beb5, %dec_label_pc_bf37, %dec_label_pc_bf2d
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

