@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2586f:
  %0 = alloca i64, align 8
  %storemerge24.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = and i64 %1, 4294967295
  %3 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_25887

dec_label_pc_25887:                               ; preds = %dec_label_pc_25887, %dec_label_pc_2586f
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %4 = mul i64 %storemerge24.reload, 4
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i32 5, ptr %6, align 4
  %7 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond = icmp eq i64 %7, 100
  store i64 %7, ptr %storemerge24.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_258ac, label %dec_label_pc_25887

dec_label_pc_258ac:                               ; preds = %dec_label_pc_25887
  %8 = icmp eq i64 %3, 0
  br i1 %8, label %dec_label_pc_258e9, label %dec_label_pc_258b3

dec_label_pc_258b3:                               ; preds = %dec_label_pc_258ac
  %9 = inttoptr i64 %2 to ptr
  %10 = inttoptr i64 %3 to ptr
  call void @_ZdaPv(ptr %10, ptr %9)
  br label %dec_label_pc_258e9

dec_label_pc_258e9:                               ; preds = %dec_label_pc_258b3, %dec_label_pc_258ac
  %phitmp.le = inttoptr i64 %3 to ptr
  %11 = load i32, ptr %phitmp.le, align 4
  call void @printIntLine(i32 %11)
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

