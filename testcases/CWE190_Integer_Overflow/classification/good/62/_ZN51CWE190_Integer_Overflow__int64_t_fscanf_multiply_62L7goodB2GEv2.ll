@global_var_766a0 = external constant [54 x i8]
@global_var_766d6 = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@0 = external global i32
@global_var_a5080 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_58469:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = bitcast ptr %stack_var_-32 to ptr
  %2 = call i64 @anon1(ptr nonnull %1)
  %3 = load i64, ptr %stack_var_-32, align 8
  %4 = icmp slt i64 %3, 1
  br i1 %4, label %dec_label_pc_584dc, label %dec_label_pc_584a1

dec_label_pc_584a1:                               ; preds = %dec_label_pc_58469
  %5 = icmp sgt i64 %3, 4611686018427387902
  br i1 %5, label %dec_label_pc_584cd, label %dec_label_pc_584b4

dec_label_pc_584b4:                               ; preds = %dec_label_pc_584a1
  %6 = mul i64 %3, 2
  call void @printLongLongLine(i64 %6)
  br label %dec_label_pc_584dc

dec_label_pc_584cd:                               ; preds = %dec_label_pc_584a1
  call void @printLine(ptr @global_var_766a0)
  br label %dec_label_pc_584dc

dec_label_pc_584dc:                               ; preds = %dec_label_pc_584cd, %dec_label_pc_584b4, %dec_label_pc_58469
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_584f1, label %dec_label_pc_584ec

dec_label_pc_584ec:                               ; preds = %dec_label_pc_584dc
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_584f1

dec_label_pc_584f1:                               ; preds = %dec_label_pc_584ec, %dec_label_pc_584dc
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_58557:
  %0 = load ptr, ptr @global_var_a5080, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_766d6, ptr %arg1)
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

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

