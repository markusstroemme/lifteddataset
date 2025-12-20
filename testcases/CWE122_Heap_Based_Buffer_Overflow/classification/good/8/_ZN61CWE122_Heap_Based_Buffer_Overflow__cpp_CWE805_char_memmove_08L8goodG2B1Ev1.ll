@global_var_51b01 = external constant [21 x i8]
@0 = external global i32

define i32 @staticReturnsFalse.50() local_unnamed_addr {
dec_label_pc_1d148:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1d210:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsFalse.50()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_1d252, label %dec_label_pc_1d241

dec_label_pc_1d241:                               ; preds = %dec_label_pc_1d210
  call void @printLine(ptr @global_var_51b01)
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_1d267

dec_label_pc_1d252:                               ; preds = %dec_label_pc_1d210
  %5 = call i64 @_Znam(i64 100)
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_1d267

dec_label_pc_1d267:                               ; preds = %dec_label_pc_1d252, %dec_label_pc_1d241
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = bitcast ptr %stack_var_-128.0.reload to ptr
  %9 = call ptr @memmove(ptr %8, ptr nonnull %stack_var_-120, i32 100)
  %10 = ptrtoint ptr %stack_var_-128.0.reload to i64
  %11 = add i64 %10, 99
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 1
  call void @printLine(ptr %stack_var_-128.0.reload)
  %13 = icmp eq ptr %stack_var_-128.0.reload, null
  br i1 %13, label %dec_label_pc_1d2c3, label %dec_label_pc_1d2b7

dec_label_pc_1d2b7:                               ; preds = %dec_label_pc_1d267
  %14 = ptrtoint ptr %stack_var_-120 to i64
  %15 = and i64 %14, 4294967288
  %16 = inttoptr i64 %15 to ptr
  call void @_ZdaPv(ptr %8, ptr %16)
  br label %dec_label_pc_1d2c3

dec_label_pc_1d2c3:                               ; preds = %dec_label_pc_1d2b7, %dec_label_pc_1d267
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_1d2d8, label %dec_label_pc_1d2d3

dec_label_pc_1d2d3:                               ; preds = %dec_label_pc_1d2c3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1d2d8

dec_label_pc_1d2d8:                               ; preds = %dec_label_pc_1d2d3, %dec_label_pc_1d2c3
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

