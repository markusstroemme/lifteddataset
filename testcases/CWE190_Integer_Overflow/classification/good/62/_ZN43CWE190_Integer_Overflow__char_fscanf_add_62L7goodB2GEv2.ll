@global_var_72958 = external constant [54 x i8]
@global_var_7298e = external constant [3 x i8]
@global_var_76cf3 = external constant [6 x i8]
@0 = external global i32
@global_var_a5080 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3c74e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-18 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 32, ptr %stack_var_-18, align 4
  %1 = bitcast ptr %stack_var_-18 to ptr
  %2 = call i64 @anon1(ptr nonnull %1)
  %3 = load i32, ptr %stack_var_-18, align 4
  %4 = trunc i32 %3 to i8
  %5 = icmp eq i8 %4, 127
  br i1 %5, label %dec_label_pc_3c798, label %dec_label_pc_3c781

dec_label_pc_3c781:                               ; preds = %dec_label_pc_3c74e
  %6 = mul i32 %3, 16777216
  %sext = add i32 %6, 16777216
  %7 = udiv i32 %sext, 16777216
  %8 = trunc i32 %7 to i8
  call void @printHexCharLine(i8 %8)
  br label %dec_label_pc_3c7a7

dec_label_pc_3c798:                               ; preds = %dec_label_pc_3c74e
  call void @printLine(ptr @global_var_72958)
  br label %dec_label_pc_3c7a7

dec_label_pc_3c7a7:                               ; preds = %dec_label_pc_3c798, %dec_label_pc_3c781
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_3c7bc, label %dec_label_pc_3c7b7

dec_label_pc_3c7b7:                               ; preds = %dec_label_pc_3c7a7
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3c7bc

dec_label_pc_3c7bc:                               ; preds = %dec_label_pc_3c7b7, %dec_label_pc_3c7a7
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_3c81e:
  %0 = load ptr, ptr @global_var_a5080, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_7298e, ptr %arg1)
  %2 = sext i32 %1 to i64
  ret i64 %2
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5a014:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5a037, label %dec_label_pc_5a02b

dec_label_pc_5a02b:                               ; preds = %dec_label_pc_5a014
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5a037

dec_label_pc_5a037:                               ; preds = %dec_label_pc_5a02b, %dec_label_pc_5a014
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

