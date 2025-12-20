@global_var_6f380 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@0 = external global i32

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_4c68c:
  %0 = bitcast ptr %result to ptr
  store i32 -1, ptr %0, align 4
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_4c6b2:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_4c6ff, label %dec_label_pc_4c6cc

dec_label_pc_4c6cc:                               ; preds = %dec_label_pc_4c6b2
  %4 = icmp ult i32 %2, 2147483647
  br i1 %4, label %dec_label_pc_4c6d9, label %dec_label_pc_4c6f0

dec_label_pc_4c6d9:                               ; preds = %dec_label_pc_4c6cc
  %5 = mul i32 %2, 2
  call void @printUnsignedLine(i32 %5)
  br label %dec_label_pc_4c6ff

dec_label_pc_4c6f0:                               ; preds = %dec_label_pc_4c6cc
  call void @printLine(ptr @global_var_6f380)
  br label %dec_label_pc_4c6ff

dec_label_pc_4c6ff:                               ; preds = %dec_label_pc_4c6f0, %dec_label_pc_4c6d9, %dec_label_pc_4c6b2
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_4c804:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-24, i32 0)
  call void @anon1(ptr nonnull %stack_var_-24)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4c857, label %dec_label_pc_4c852

dec_label_pc_4c852:                               ; preds = %dec_label_pc_4c804
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4c857

dec_label_pc_4c857:                               ; preds = %dec_label_pc_4c852, %dec_label_pc_4c804
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

