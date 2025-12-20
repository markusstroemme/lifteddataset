@global_var_7a994 = external constant [4 x i8]
@0 = external global i32

define void @anon0(ptr %result, i16 %arg2) local_unnamed_addr {
dec_label_pc_5b8e8:
  %0 = bitcast ptr %result to ptr
  store i16 %arg2, ptr %0, align 2
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = call i32 @rand()
  %8 = xor i32 %7, %6
  %9 = sext i1 %3 to i32
  %storemerge.in = xor i32 %8, %9
  %10 = trunc i32 %storemerge.in to i16
  store i16 %10, ptr %0, align 2
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_5b958:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = mul i32 %2, 65536
  %sext = add i32 %3, 65536
  %4 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %4)
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_5ba94:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 2)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i16 0)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_5bb07, label %dec_label_pc_5bad1

dec_label_pc_5bad1:                               ; preds = %dec_label_pc_5ba94
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 2)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5bb07

dec_label_pc_5bb07:                               ; preds = %dec_label_pc_5bad1, %dec_label_pc_5ba94
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

