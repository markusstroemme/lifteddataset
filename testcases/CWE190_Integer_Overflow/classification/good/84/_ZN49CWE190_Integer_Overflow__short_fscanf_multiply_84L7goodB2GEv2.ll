@global_var_784a8 = external constant [4 x i8]
@global_var_784b0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@0 = external global i32
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0(ptr %result, i16 %arg2) local_unnamed_addr {
dec_label_pc_5227c:
  %0 = bitcast ptr %result to ptr
  store i16 %arg2, ptr %0, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_784a8, ptr %result)
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_522c2:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i16
  %3 = icmp slt i16 %2, 1
  br i1 %3, label %dec_label_pc_52314, label %dec_label_pc_522de

dec_label_pc_522de:                               ; preds = %dec_label_pc_522c2
  %4 = icmp sgt i16 %2, 16382
  br i1 %4, label %dec_label_pc_52305, label %dec_label_pc_522eb

dec_label_pc_522eb:                               ; preds = %dec_label_pc_522de
  %5 = mul i16 %2, 2
  %6 = sext i16 %5 to i32
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_52314

dec_label_pc_52305:                               ; preds = %dec_label_pc_522de
  call void @printLine(ptr @global_var_784b0)
  br label %dec_label_pc_52314

dec_label_pc_52314:                               ; preds = %dec_label_pc_52305, %dec_label_pc_522eb, %dec_label_pc_522c2
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_52473:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 2)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i16 0)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_524e6, label %dec_label_pc_524b0

dec_label_pc_524b0:                               ; preds = %dec_label_pc_52473
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 2)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_524e6

dec_label_pc_524e6:                               ; preds = %dec_label_pc_524b0, %dec_label_pc_52473
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

