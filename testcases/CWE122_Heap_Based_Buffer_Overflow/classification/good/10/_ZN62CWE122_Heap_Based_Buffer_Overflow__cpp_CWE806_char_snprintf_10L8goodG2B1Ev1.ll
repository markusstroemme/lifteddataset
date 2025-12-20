@global_var_47a3f = external constant [3 x i8]
@global_var_47a42 = external constant [21 x i8]
@0 = external global i32
@global_var_5c1d0 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_34091:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = load i32, ptr @global_var_5c1d0, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_340d5, label %dec_label_pc_340c4

dec_label_pc_340c4:                               ; preds = %dec_label_pc_34091
  call void @printLine(ptr @global_var_47a42)
  br label %dec_label_pc_340f6

dec_label_pc_340d5:                               ; preds = %dec_label_pc_34091
  %4 = inttoptr i64 %1 to ptr
  %5 = call ptr @memset(ptr %4, i32 65, i32 49)
  %6 = add i64 %1, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  br label %dec_label_pc_340f6

dec_label_pc_340f6:                               ; preds = %dec_label_pc_340d5, %dec_label_pc_340c4
  %8 = inttoptr i64 %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %9 = call i32 @strlen(ptr %8)
  %10 = bitcast ptr %stack_var_-72 to ptr
  %11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %10, i32 %9, ptr @global_var_47a3f, ptr %8)
  call void @printLine(ptr %8)
  %12 = icmp eq i64 %1, 0
  br i1 %12, label %dec_label_pc_34179, label %dec_label_pc_3416d

dec_label_pc_3416d:                               ; preds = %dec_label_pc_340f6
  %13 = zext i32 %9 to i64
  %14 = inttoptr i64 %1 to ptr
  %15 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %14, ptr %15)
  br label %dec_label_pc_34179

dec_label_pc_34179:                               ; preds = %dec_label_pc_3416d, %dec_label_pc_340f6
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_3418e, label %dec_label_pc_34189

dec_label_pc_34189:                               ; preds = %dec_label_pc_34179
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3418e

dec_label_pc_3418e:                               ; preds = %dec_label_pc_34189, %dec_label_pc_34179
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3a5bd:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3a5e0, label %dec_label_pc_3a5d4

dec_label_pc_3a5d4:                               ; preds = %dec_label_pc_3a5bd
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3a5e0

dec_label_pc_3a5e0:                               ; preds = %dec_label_pc_3a5d4, %dec_label_pc_3a5bd
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

