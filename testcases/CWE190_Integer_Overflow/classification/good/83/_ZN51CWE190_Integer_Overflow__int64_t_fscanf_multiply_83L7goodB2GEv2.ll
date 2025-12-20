@global_var_76c40 = external constant [4 x i8]
@global_var_76c48 = external constant [54 x i8]
@global_var_76ce9 = external constant [5 x i8]
@0 = external global i32
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_59ad6:
  %0 = sext i32 %arg2 to i64
  store i64 %0, ptr %result, align 8
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_76c40, ptr %result)
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_59b1a:
  %0 = icmp sgt ptr %result, null
  br i1 %0, label %dec_label_pc_59b36, label %dec_label_pc_59b77

dec_label_pc_59b36:                               ; preds = %dec_label_pc_59b1a
  %1 = icmp sgt ptr %result, inttoptr (i64 4611686018427387902 to ptr)
  br i1 %1, label %dec_label_pc_59b68, label %dec_label_pc_59b4c

dec_label_pc_59b4c:                               ; preds = %dec_label_pc_59b36
  %2 = ptrtoint ptr %result to i64
  %3 = mul i64 %2, 2
  call void @printLongLongLine(i64 %3)
  br label %dec_label_pc_59b77

dec_label_pc_59b68:                               ; preds = %dec_label_pc_59b36
  call void @printLine(ptr @global_var_76c48)
  br label %dec_label_pc_59b77

dec_label_pc_59b77:                               ; preds = %dec_label_pc_59b1a, %dec_label_pc_59b68, %dec_label_pc_59b4c
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_59c8d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-32, i32 0)
  call void @anon1(ptr nonnull %stack_var_-32)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_59ce3, label %dec_label_pc_59cde

dec_label_pc_59cde:                               ; preds = %dec_label_pc_59c8d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_59ce3

dec_label_pc_59ce3:                               ; preds = %dec_label_pc_59cde, %dec_label_pc_59c8d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

