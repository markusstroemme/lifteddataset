@global_var_320 = external constant [20 x i8]
@global_var_5f2d4 = external constant [21 x i8]
@global_var_609e9 = external constant [5 x i8]
@0 = external global i32
@global_var_7f120 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_27fa9:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-832.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_7f120, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_27fed, label %dec_label_pc_27fdc

dec_label_pc_27fdc:                               ; preds = %dec_label_pc_27fa9
  call void @printLine(ptr @global_var_5f2d4)
  store i64 0, ptr %stack_var_-832.0.reg2mem, align 8
  br label %dec_label_pc_27ffe

dec_label_pc_27fed:                               ; preds = %dec_label_pc_27fa9
  %3 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 %3, ptr %stack_var_-832.0.reg2mem, align 8
  br label %dec_label_pc_27ffe

dec_label_pc_27ffe:                               ; preds = %dec_label_pc_27fed, %dec_label_pc_27fdc
  %stack_var_-832.0.reload = load i64, ptr %stack_var_-832.0.reg2mem, align 8
  %4 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 100)
  %5 = inttoptr i64 %stack_var_-832.0.reload to ptr
  %6 = call ptr @memcpy(ptr %5, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %7 = load i64, ptr %5, align 8
  call void @printLongLongLine(i64 %7)
  %8 = icmp eq i64 %stack_var_-832.0.reload, 0
  br i1 %8, label %dec_label_pc_2805e, label %dec_label_pc_2804f

dec_label_pc_2804f:                               ; preds = %dec_label_pc_27ffe
  %9 = ptrtoint ptr %stack_var_-824 to i64
  %10 = and i64 %9, 4294967288
  %11 = inttoptr i64 %10 to ptr
  call void @_ZdaPv(ptr %5, ptr %11)
  br label %dec_label_pc_2805e

dec_label_pc_2805e:                               ; preds = %dec_label_pc_2804f, %dec_label_pc_27ffe
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_28073, label %dec_label_pc_2806e

dec_label_pc_2806e:                               ; preds = %dec_label_pc_2805e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_28073

dec_label_pc_28073:                               ; preds = %dec_label_pc_2806e, %dec_label_pc_2805e
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

