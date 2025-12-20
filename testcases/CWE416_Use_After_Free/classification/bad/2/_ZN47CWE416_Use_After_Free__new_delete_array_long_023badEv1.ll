@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_265a5:
  %0 = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_265d1

dec_label_pc_265d1:                               ; preds = %dec_label_pc_265d1, %dec_label_pc_265a5
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %3 = mul i64 %storemerge2.reload, 8
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i64 5, ptr %5, align 8
  %6 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %6, 100
  store i64 %6, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_265f7, label %dec_label_pc_265d1

dec_label_pc_265f7:                               ; preds = %dec_label_pc_265d1
  %7 = icmp eq i64 %2, 0
  %.pre = inttoptr i64 %2 to ptr
  br i1 %7, label %dec_label_pc_2660a, label %dec_label_pc_265fe

dec_label_pc_265fe:                               ; preds = %dec_label_pc_265f7
  %8 = and i64 %1, 4294967295
  %9 = inttoptr i64 %8 to ptr
  call void @_ZdaPv(ptr %.pre, ptr %9)
  br label %dec_label_pc_2660a

dec_label_pc_2660a:                               ; preds = %dec_label_pc_265f7, %dec_label_pc_265fe
  %10 = load i64, ptr %.pre, align 8
  call void @printLongLine(i64 %10)
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

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

