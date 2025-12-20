@global_var_91dd0 = external constant [54 x i8]
@global_var_95449 = external constant [5 x i8]
@0 = external global i32

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_5deda:
  store i64 9223372036854775807, ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_5df0a:
  %0 = icmp sgt ptr %result, null
  br i1 %0, label %dec_label_pc_5df26, label %dec_label_pc_5df67

dec_label_pc_5df26:                               ; preds = %dec_label_pc_5df0a
  %1 = icmp sgt ptr %result, inttoptr (i64 4611686018427387902 to ptr)
  br i1 %1, label %dec_label_pc_5df58, label %dec_label_pc_5df3c

dec_label_pc_5df3c:                               ; preds = %dec_label_pc_5df26
  %2 = ptrtoint ptr %result to i64
  %3 = mul i64 %2, 2
  call void @printLongLongLine(i64 %3)
  br label %dec_label_pc_5df67

dec_label_pc_5df58:                               ; preds = %dec_label_pc_5df26
  call void @printLine(ptr @global_var_91dd0)
  br label %dec_label_pc_5df67

dec_label_pc_5df67:                               ; preds = %dec_label_pc_5df0a, %dec_label_pc_5df58, %dec_label_pc_5df3c
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_5e07d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-32, i32 0)
  call void @anon1(ptr nonnull %stack_var_-32)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_5e0d3, label %dec_label_pc_5e0ce

dec_label_pc_5e0ce:                               ; preds = %dec_label_pc_5e07d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5e0d3

dec_label_pc_5e0d3:                               ; preds = %dec_label_pc_5e0ce, %dec_label_pc_5e07d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

