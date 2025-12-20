@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_23f5d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_23fa3, label %dec_label_pc_23f8e

dec_label_pc_23f8e:                               ; preds = %dec_label_pc_23f5d
  %5 = call i64 @_Znam(i64 100)
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_23fa3

dec_label_pc_23fa3:                               ; preds = %dec_label_pc_23f8e, %dec_label_pc_23f5d
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = bitcast ptr %stack_var_-120 to ptr
  %9 = call ptr @strncat(ptr %stack_var_-128.0.reload, ptr nonnull %8, i32 100)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %10 = icmp eq ptr %stack_var_-128.0.reload, null
  br i1 %10, label %dec_label_pc_23ff4, label %dec_label_pc_23fe8

dec_label_pc_23fe8:                               ; preds = %dec_label_pc_23fa3
  %11 = ptrtoint ptr %stack_var_-120 to i64
  %12 = bitcast ptr %stack_var_-128.0.reload to ptr
  %13 = and i64 %11, 4294967288
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  br label %dec_label_pc_23ff4

dec_label_pc_23ff4:                               ; preds = %dec_label_pc_23fe8, %dec_label_pc_23fa3
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_24009, label %dec_label_pc_24004

dec_label_pc_24004:                               ; preds = %dec_label_pc_23ff4
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_24009

dec_label_pc_24009:                               ; preds = %dec_label_pc_24004, %dec_label_pc_23ff4
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_42e40:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_42e63, label %dec_label_pc_42e57

dec_label_pc_42e57:                               ; preds = %dec_label_pc_42e40
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_42e63

dec_label_pc_42e63:                               ; preds = %dec_label_pc_42e57, %dec_label_pc_42e40
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_43350:
  ret i32 1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

