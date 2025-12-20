@global_var_320 = external constant [20 x i8]
@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1f346:
  %0 = alloca i64, align 8
  %storemerge35.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = and i64 %1, 4294967295
  %3 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge35.reg2mem, align 8
  br label %dec_label_pc_1f35e

dec_label_pc_1f35e:                               ; preds = %dec_label_pc_1f35e, %dec_label_pc_1f346
  %storemerge35.reload = load i64, ptr %storemerge35.reg2mem, align 8
  %4 = mul i64 %storemerge35.reload, 8
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i32 1, ptr %6, align 4
  %7 = add i64 %5, 4
  %8 = inttoptr i64 %7 to ptr
  store i32 2, ptr %8, align 4
  %9 = add nuw nsw i64 %storemerge35.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge35.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1f39d, label %dec_label_pc_1f35e

dec_label_pc_1f39d:                               ; preds = %dec_label_pc_1f35e
  %10 = icmp eq i64 %3, 0
  br i1 %10, label %dec_label_pc_1f3da, label %dec_label_pc_1f3a4

dec_label_pc_1f3a4:                               ; preds = %dec_label_pc_1f39d
  %11 = inttoptr i64 %2 to ptr
  %12 = inttoptr i64 %3 to ptr
  call void @_ZdaPv(ptr %12, ptr %11)
  br label %dec_label_pc_1f3da

dec_label_pc_1f3da:                               ; preds = %dec_label_pc_1f3a4, %dec_label_pc_1f39d
  %13 = inttoptr i64 %3 to ptr
  %14 = load i32, ptr %13, align 4
  call void @printIntLine(i32 %14)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

