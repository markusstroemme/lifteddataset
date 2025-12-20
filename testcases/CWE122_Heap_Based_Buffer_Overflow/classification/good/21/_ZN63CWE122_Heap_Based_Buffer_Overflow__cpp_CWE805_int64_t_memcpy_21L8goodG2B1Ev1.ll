@global_var_320 = external constant [20 x i8]
@global_var_5f383 = external constant [21 x i8]
@global_var_609e9 = external constant [5 x i8]
@0 = external global i32
@global_var_7f128 = external local_unnamed_addr global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_29d6c:
  %stack_var_-16.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_7f128, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_29d97, label %dec_label_pc_29d86

dec_label_pc_29d86:                               ; preds = %dec_label_pc_29d6c
  %2 = ptrtoint ptr %arg1 to i64
  call void @printLine(ptr @global_var_5f383)
  store i64 %2, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_29da5

dec_label_pc_29d97:                               ; preds = %dec_label_pc_29d6c
  %3 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_29da5

dec_label_pc_29da5:                               ; preds = %dec_label_pc_29d97, %dec_label_pc_29d86
  %stack_var_-16.0.reload = load i64, ptr %stack_var_-16.0.reg2mem, align 8
  ret i64 %stack_var_-16.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_29dab:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @global_var_7f128, align 4
  %1 = call i64 @anon0(ptr null)
  %2 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 100)
  %3 = inttoptr i64 %1 to ptr
  %4 = call ptr @memcpy(ptr %3, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %5 = load i64, ptr %3, align 8
  call void @printLongLongLine(i64 %5)
  %6 = icmp eq i64 %1, 0
  br i1 %6, label %dec_label_pc_29e54, label %dec_label_pc_29e45

dec_label_pc_29e45:                               ; preds = %dec_label_pc_29dab
  %7 = ptrtoint ptr %stack_var_-824 to i64
  %8 = and i64 %7, 4294967288
  %9 = inttoptr i64 %8 to ptr
  call void @_ZdaPv(ptr %3, ptr %9)
  br label %dec_label_pc_29e54

dec_label_pc_29e54:                               ; preds = %dec_label_pc_29e45, %dec_label_pc_29dab
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_29e69, label %dec_label_pc_29e64

dec_label_pc_29e64:                               ; preds = %dec_label_pc_29e54
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_29e69

dec_label_pc_29e69:                               ; preds = %dec_label_pc_29e64, %dec_label_pc_29e54
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4d978:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4d99b, label %dec_label_pc_4d98f

dec_label_pc_4d98f:                               ; preds = %dec_label_pc_4d978
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4d99b

dec_label_pc_4d99b:                               ; preds = %dec_label_pc_4d98f, %dec_label_pc_4d978
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_4da96:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609e9, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

