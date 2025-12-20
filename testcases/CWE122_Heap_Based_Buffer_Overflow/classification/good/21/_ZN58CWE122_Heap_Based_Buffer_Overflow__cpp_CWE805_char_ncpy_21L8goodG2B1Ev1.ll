@global_var_5245b = external constant [21 x i8]
@0 = external global i32
@global_var_6c160 = external local_unnamed_addr global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_2b14a:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_6c160, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2b175, label %dec_label_pc_2b164

dec_label_pc_2b164:                               ; preds = %dec_label_pc_2b14a
  call void @printLine(ptr @global_var_5245b)
  store ptr %arg1, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_2b18a

dec_label_pc_2b175:                               ; preds = %dec_label_pc_2b14a
  %2 = call i64 @_Znam(i64 100)
  %3 = inttoptr i64 %2 to ptr
  store i8 0, ptr %3, align 1
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_2b18a

dec_label_pc_2b18a:                               ; preds = %dec_label_pc_2b175, %dec_label_pc_2b164
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %4 = ptrtoint ptr %stack_var_-16.0.reload to i64
  ret i64 %4
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_2b190:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @global_var_6c160, align 4
  %1 = call i64 @anon0(ptr null)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = inttoptr i64 %1 to ptr
  %4 = bitcast ptr %stack_var_-120 to ptr
  %5 = call ptr @strncpy(ptr %3, ptr nonnull %4, i32 99)
  %6 = add i64 %1, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  call void @printLine(ptr %3)
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %dec_label_pc_2b229, label %dec_label_pc_2b21d

dec_label_pc_2b21d:                               ; preds = %dec_label_pc_2b190
  %9 = ptrtoint ptr %stack_var_-120 to i64
  %10 = inttoptr i64 %1 to ptr
  %11 = and i64 %9, 4294967288
  %12 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %10, ptr %12)
  br label %dec_label_pc_2b229

dec_label_pc_2b229:                               ; preds = %dec_label_pc_2b21d, %dec_label_pc_2b190
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_2b23e, label %dec_label_pc_2b239

dec_label_pc_2b239:                               ; preds = %dec_label_pc_2b229
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2b23e

dec_label_pc_2b23e:                               ; preds = %dec_label_pc_2b239, %dec_label_pc_2b229
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

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

