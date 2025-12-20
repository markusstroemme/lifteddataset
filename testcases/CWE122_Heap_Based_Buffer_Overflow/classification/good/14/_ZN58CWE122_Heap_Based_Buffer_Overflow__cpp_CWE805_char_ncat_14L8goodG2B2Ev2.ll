@0 = external global i32
@global_var_6c054 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_24548:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_6c054, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_2458b, label %dec_label_pc_24576

dec_label_pc_24576:                               ; preds = %dec_label_pc_24548
  %4 = call i64 @_Znam(i64 100)
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  store ptr %5, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_2458b

dec_label_pc_2458b:                               ; preds = %dec_label_pc_24576, %dec_label_pc_24548
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %6 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %7 = bitcast ptr %stack_var_-120 to ptr
  %8 = call ptr @strncat(ptr %stack_var_-128.0.reload, ptr nonnull %7, i32 100)
  call void @printLine(ptr %stack_var_-128.0.reload)
  %9 = icmp eq ptr %stack_var_-128.0.reload, null
  br i1 %9, label %dec_label_pc_245dc, label %dec_label_pc_245d0

dec_label_pc_245d0:                               ; preds = %dec_label_pc_2458b
  %10 = ptrtoint ptr %stack_var_-120 to i64
  %11 = bitcast ptr %stack_var_-128.0.reload to ptr
  %12 = and i64 %10, 4294967288
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %11, ptr %13)
  br label %dec_label_pc_245dc

dec_label_pc_245dc:                               ; preds = %dec_label_pc_245d0, %dec_label_pc_2458b
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_245f1, label %dec_label_pc_245ec

dec_label_pc_245ec:                               ; preds = %dec_label_pc_245dc
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_245f1

dec_label_pc_245f1:                               ; preds = %dec_label_pc_245ec, %dec_label_pc_245dc
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

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

