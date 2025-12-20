@global_var_8261e = external constant [16 x i8]
@CWE190_Integer_Overflow__int_fgets_square_68_badData = external local_unnamed_addr global i32
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_160c0:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_16125, label %dec_label_pc_16114

dec_label_pc_16114:                               ; preds = %dec_label_pc_160c0
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_16134

dec_label_pc_16125:                               ; preds = %dec_label_pc_160c0
  call void @printLine(ptr @global_var_8261e)
  store i32 0, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_16134

dec_label_pc_16134:                               ; preds = %dec_label_pc_16125, %dec_label_pc_16114
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  store i32 %stack_var_-36.0.reload, ptr @CWE190_Integer_Overflow__int_fgets_square_68_badData, align 4
  call void @anon1()
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_1615c, label %dec_label_pc_16157

dec_label_pc_16157:                               ; preds = %dec_label_pc_16134
  call void @__stack_chk_fail()
  br label %dec_label_pc_1615c

dec_label_pc_1615c:                               ; preds = %dec_label_pc_16157, %dec_label_pc_16134
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1624b:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_fgets_square_68_badData, align 4
  %1 = mul i32 %0, %0
  call void @printIntLine(i32 %1)
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

