@global_var_320 = external constant [20 x i8]
@global_var_5f305 = external constant [21 x i8]
@global_var_609e9 = external constant [5 x i8]
@0 = external global i32

define i32 @staticReturnsFalse.59() local_unnamed_addr {
dec_label_pc_285d6:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_286a4:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-832.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsFalse.59()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_286ec, label %dec_label_pc_286db

dec_label_pc_286db:                               ; preds = %dec_label_pc_286a4
  call void @printLine(ptr @global_var_5f305)
  store i64 0, ptr %stack_var_-832.0.reg2mem, align 8
  br label %dec_label_pc_286fd

dec_label_pc_286ec:                               ; preds = %dec_label_pc_286a4
  %5 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 %5, ptr %stack_var_-832.0.reg2mem, align 8
  br label %dec_label_pc_286fd

dec_label_pc_286fd:                               ; preds = %dec_label_pc_286ec, %dec_label_pc_286db
  %stack_var_-832.0.reload = load i64, ptr %stack_var_-832.0.reg2mem, align 8
  %6 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 100)
  %7 = inttoptr i64 %stack_var_-832.0.reload to ptr
  %8 = call ptr @memcpy(ptr %7, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %9 = load i64, ptr %7, align 8
  call void @printLongLongLine(i64 %9)
  %10 = icmp eq i64 %stack_var_-832.0.reload, 0
  br i1 %10, label %dec_label_pc_2875d, label %dec_label_pc_2874e

dec_label_pc_2874e:                               ; preds = %dec_label_pc_286fd
  %11 = ptrtoint ptr %stack_var_-824 to i64
  %12 = and i64 %11, 4294967288
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %7, ptr %13)
  br label %dec_label_pc_2875d

dec_label_pc_2875d:                               ; preds = %dec_label_pc_2874e, %dec_label_pc_286fd
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_28772, label %dec_label_pc_2876d

dec_label_pc_2876d:                               ; preds = %dec_label_pc_2875d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_28772

dec_label_pc_28772:                               ; preds = %dec_label_pc_2876d, %dec_label_pc_2875d
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

