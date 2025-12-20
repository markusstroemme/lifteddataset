@global_var_6c5e9 = external constant [21 x i8]
@global_var_89044 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_30eb9:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_89044, align 4
  %2 = icmp eq i32 %1, 5
  br i1 %2, label %dec_label_pc_30efe, label %dec_label_pc_30eed

dec_label_pc_30eed:                               ; preds = %dec_label_pc_30eb9
  call void @printLine(ptr @global_var_6c5e9)
  br label %dec_label_pc_30f25

dec_label_pc_30efe:                               ; preds = %dec_label_pc_30eb9
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  %4 = ptrtoint ptr %stack_var_-120 to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_30f25

dec_label_pc_30f25:                               ; preds = %dec_label_pc_30efe, %dec_label_pc_30eed
  %7 = bitcast ptr %stack_var_-120 to ptr
  store i64 0, ptr %stack_var_-184, align 8
  %8 = bitcast ptr %stack_var_-184 to ptr
  %9 = call ptr @strcat(ptr nonnull %8, ptr nonnull %7)
  call void @printLine(ptr nonnull %7)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_30faa, label %dec_label_pc_30fa5

dec_label_pc_30fa5:                               ; preds = %dec_label_pc_30f25
  call void @__stack_chk_fail()
  br label %dec_label_pc_30faa

dec_label_pc_30faa:                               ; preds = %dec_label_pc_30fa5, %dec_label_pc_30f25
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

