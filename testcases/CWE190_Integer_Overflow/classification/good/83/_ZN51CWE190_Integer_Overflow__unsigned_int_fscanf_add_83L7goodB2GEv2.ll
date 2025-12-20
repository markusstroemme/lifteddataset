@global_var_6d948 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@0 = external global i32
@global_var_9c070 = external global ptr
@global_var_6d940 = external constant [3 x i8]

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_4517e:
  %0 = bitcast ptr %result to ptr
  store i32 %arg2, ptr %0, align 4
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_6d940)
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_451c0:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %dec_label_pc_451f3, label %dec_label_pc_451db

dec_label_pc_451db:                               ; preds = %dec_label_pc_451c0
  %4 = add i32 %2, 1
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_45202

dec_label_pc_451f3:                               ; preds = %dec_label_pc_451c0
  call void @printLine(ptr @global_var_6d948)
  br label %dec_label_pc_45202

dec_label_pc_45202:                               ; preds = %dec_label_pc_451f3, %dec_label_pc_451db
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_452ff:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-24, i32 0)
  call void @anon1(ptr nonnull %stack_var_-24)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_45352, label %dec_label_pc_4534d

dec_label_pc_4534d:                               ; preds = %dec_label_pc_452ff
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_45352

dec_label_pc_45352:                               ; preds = %dec_label_pc_4534d, %dec_label_pc_452ff
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

