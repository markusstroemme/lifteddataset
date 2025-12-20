@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_289d0:
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_289fc

dec_label_pc_289fc:                               ; preds = %dec_label_pc_289fc, %dec_label_pc_289d0
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %1 = mul i64 %storemerge2.reload, 8
  %2 = add i64 %1, %0
  %3 = inttoptr i64 %2 to ptr
  store i64 5, ptr %3, align 8
  %4 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %4, 100
  store i64 %4, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_28a22, label %dec_label_pc_289fc

dec_label_pc_28a22:                               ; preds = %dec_label_pc_289fc
  %5 = inttoptr i64 %0 to ptr
  %6 = load i64, ptr %5, align 8
  call void @printLongLine(i64 %6)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3b8f7:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

