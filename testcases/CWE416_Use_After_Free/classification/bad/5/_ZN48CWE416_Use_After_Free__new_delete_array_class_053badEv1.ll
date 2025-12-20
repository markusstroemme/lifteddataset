@global_var_320 = external constant [20 x i8]
@global_var_4a944 = external constant [4 x i8]
@0 = external global i32
@global_var_63048 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1cf90:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_63048, align 4
  %3 = icmp eq i32 %2, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_1d02f, label %dec_label_pc_1cfae

dec_label_pc_1cfae:                               ; preds = %dec_label_pc_1cf90
  %4 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_1cfc6

dec_label_pc_1cfc6:                               ; preds = %dec_label_pc_1cfc6, %dec_label_pc_1cfae
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %5 = mul i64 %storemerge2.reload, 8
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 1, ptr %7, align 4
  %8 = add i64 %6, 4
  %9 = inttoptr i64 %8 to ptr
  store i32 2, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1d005, label %dec_label_pc_1cfc6

dec_label_pc_1d005:                               ; preds = %dec_label_pc_1cfc6
  %11 = icmp eq i64 %4, 0
  br i1 %11, label %dec_label_pc_1d018, label %dec_label_pc_1d00c

dec_label_pc_1d00c:                               ; preds = %dec_label_pc_1d005
  %12 = inttoptr i64 %4 to ptr
  %13 = and i64 %1, 4294967295
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  br label %dec_label_pc_1d018

dec_label_pc_1d018:                               ; preds = %dec_label_pc_1d00c, %dec_label_pc_1d005
  %.pr = load i32, ptr @global_var_63048, align 4
  %15 = icmp eq i32 %.pr, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_1d02f, label %dec_label_pc_1d022

dec_label_pc_1d022:                               ; preds = %dec_label_pc_1d018
  %16 = inttoptr i64 %4 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1d02f

dec_label_pc_1d02f:                               ; preds = %dec_label_pc_1cf90, %dec_label_pc_1d022, %dec_label_pc_1d018
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

