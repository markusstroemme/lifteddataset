@CWE122_Heap_Based_Buffer_Overflow__c_CWE806_char_loop_22_goodG2B1Global = external local_unnamed_addr global i32
@global_var_4816d = external constant [21 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_a184:
  %.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_a1be, label %dec_label_pc_a1b4

dec_label_pc_a1b4:                                ; preds = %dec_label_pc_a184
  call void @exit(i32 -1)
  unreachable

dec_label_pc_a1be:                                ; preds = %dec_label_pc_a184
  %4 = bitcast ptr %1 to ptr
  store i32 0, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE806_char_loop_22_goodG2B1Global, align 4
  %5 = call ptr @anon0(ptr %4)
  store i64 0, ptr %stack_var_-72, align 8
  %6 = call i32 @strlen(ptr %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %dec_label_pc_a252, label %dec_label_pc_a228.lr.ph

dec_label_pc_a228.lr.ph:                          ; preds = %dec_label_pc_a1be
  %8 = sext i32 %6 to i64
  %9 = ptrtoint ptr %5 to i64
  %10 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_a228

dec_label_pc_a228:                                ; preds = %dec_label_pc_a228.lr.ph, %dec_label_pc_a228
  %.reload = load i64, ptr %.reg2mem, align 8
  %11 = add i64 %.reload, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = add i64 %.reload, %10
  %15 = inttoptr i64 %14 to ptr
  store i8 %13, ptr %15, align 1
  %16 = add nuw i64 %.reload, 1
  %17 = icmp ult i64 %16, %8
  store i64 %16, ptr %.reg2mem, align 8
  br i1 %17, label %dec_label_pc_a228, label %dec_label_pc_a252

dec_label_pc_a252:                                ; preds = %dec_label_pc_a228, %dec_label_pc_a1be
  call void @printLine(ptr %5)
  %18 = bitcast ptr %5 to ptr
  call void @free(ptr %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  br i1 %20, label %dec_label_pc_a283, label %dec_label_pc_a27e

dec_label_pc_a27e:                                ; preds = %dec_label_pc_a252
  call void @__stack_chk_fail()
  br label %dec_label_pc_a283

dec_label_pc_a283:                                ; preds = %dec_label_pc_a27e, %dec_label_pc_a252
  ret void
}

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_a3e6:
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE806_char_loop_22_goodG2B1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_a411, label %dec_label_pc_a400

dec_label_pc_a400:                                ; preds = %dec_label_pc_a3e6
  call void @printLine(ptr @global_var_4816d)
  br label %dec_label_pc_a432

dec_label_pc_a411:                                ; preds = %dec_label_pc_a3e6
  %2 = bitcast ptr %data to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 49)
  %4 = ptrtoint ptr %data to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_a432

dec_label_pc_a432:                                ; preds = %dec_label_pc_a411, %dec_label_pc_a400
  ret ptr %data
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3c6eb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3c70e, label %dec_label_pc_3c702

dec_label_pc_3c702:                               ; preds = %dec_label_pc_3c6eb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3c70e

dec_label_pc_3c70e:                               ; preds = %dec_label_pc_3c702, %dec_label_pc_3c6eb
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

