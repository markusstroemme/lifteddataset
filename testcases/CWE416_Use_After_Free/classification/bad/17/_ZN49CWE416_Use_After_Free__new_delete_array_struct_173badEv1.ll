@global_var_320 = external constant [20 x i8]
@global_var_4a96e = external constant [10 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2c386:
  %0 = alloca i64, align 8
  %storemerge35.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = and i64 %1, 4294967295
  %3 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge35.reg2mem, align 8
  br label %dec_label_pc_2c39e

dec_label_pc_2c39e:                               ; preds = %dec_label_pc_2c39e, %dec_label_pc_2c386
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
  br i1 %exitcond, label %dec_label_pc_2c3dd, label %dec_label_pc_2c39e

dec_label_pc_2c3dd:                               ; preds = %dec_label_pc_2c39e
  %10 = icmp eq i64 %3, 0
  br i1 %10, label %dec_label_pc_2c419, label %dec_label_pc_2c3e4

dec_label_pc_2c3e4:                               ; preds = %dec_label_pc_2c3dd
  %11 = inttoptr i64 %2 to ptr
  %12 = inttoptr i64 %3 to ptr
  call void @_ZdaPv(ptr %12, ptr %11)
  br label %dec_label_pc_2c419

dec_label_pc_2c419:                               ; preds = %dec_label_pc_2c3e4, %dec_label_pc_2c3dd
  %13 = inttoptr i64 %3 to ptr
  call void @printStructLine(ptr %13)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_3ba96:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_4a96e, i64 %7, i64 %6)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

